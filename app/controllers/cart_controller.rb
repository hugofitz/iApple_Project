class CartController < ApplicationController

  before_filter :authenticate_user!
    def createOrder
   
  @user = User.find(current_user.id)
  @order = @user.orders.build(:date_of_order => DateTime.now) 
  @order.save
  @cart = session[:cart] || {} # Get the content of the Cart
  @cart.each do | id, quantity |
  item = Item.find_by_id(id)
  @orderitem = @order.orderitems.build(:item_id => item.id, :product => item.product,:colour =>item.colour,:description => item.description, :quantity => quantity, :price => item.price)
  @orderitem.save
  end
end
  
  def add 
    
  id = params[:id]
  cart = session[:cart] ||= {}
  cart[id]=(cart[id] || 0)+1
  redirect_to :action => :index
  end
  
  def index
  @cart = session[:cart] || {}
  end
  def change
    cart = session[:cart]
    id = params[:id];
    quantity = params[:quantity].to_i
    if cart and cart[id]
      unless quantity <= 0
    else
      cart.delete id
    end
  end
  redirect_to :action => :index
end
def checkout
  flash[:notice]="Checkout is not ready yet"
  redirect_to :action => :index
end
def remove
  id = params[:id]
  cart = session[:cart]
  cart.delete id
  
  redirect_to :action => :index
  
end 

def clear
  session[:cart] = nil
  redirect_to :action => :index
end
  
end

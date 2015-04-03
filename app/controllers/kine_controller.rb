class KineController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]

  # GET /kine
  # GET /kine.json
  def index
    if ! (params[:search].nil? && params[:search_owner].nil?)
      @kine = Cow.search(params[:search], params[:search_owner])
      @kineHash = @kine.pluck2hash(:id, :name, :ear, :birth, :owner_id, :t01, :t02, :t03, :t04, :t05, :t06, :t07, :t08, :t09, :t10) #, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24, :t25, :t26, :t27, :t28, :t29, :t30, :t31, :t32, :t33, :t34, :t35, :t36, :t37, :t38, :t39, :t40, :t41, :t42, :t43, :t44, :t45, :t46, :t47, :t48, :t49, :t50, :t51, :t52, :t53, :t54, :t55, :t56, :t57, :t58, :t59, :t60, :t61, :t62, :t63, :t64, :t65, :t66, :t67, :t68, :t69, :t70, :t71, :t72, :t73, :t74, :t75, :t76, :t77, :t78, :t79, :t80, :t81, :t82, :t83, :t84, :t85, :t86, :t87, :t88, :t89, :t90, :t91, :t92, :t93, :t94, :t95, :t96, :t97, :t98, :t99)
#    @kineArray = @kine.pluck2array(:id, :name, :ear, :birth, :owner_id )
      #, :t01, :t02, :t03, :t04, :t05, :t06, :t07, :t08, :t09, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24, :t25, :t26, :t27, :t28, :t29, :t30, :t31, :t32, :t33, :t34, :t35, :t36, :t37, :t38, :t39, :t40, :t41, :t42, :t43, :t44, :t45, :t46, :t47, :t48, :t49, :t50, :t51, :t52, :t53, :t54, :t55, :t56, :t57, :t58, :t59, :t60, :t61, :t62, :t63, :t64, :t65, :t66, :t67, :t68, :t69, :t70, :t71, :t72, :t73, :t74, :t75, :t76, :t77, :t78, :t79, :t80, :t81, :t82, :t83, :t84, :t85, :t86, :t87, :t88, :t89, :t90, :t91, :t92, :t93, :t94, :t95, :t96, :t97, :t98, :t99)
    else
      @kine = []
    end
  end

  # GET /kine/1
  # GET /kine/1.json
  def show
  end

  # GET /kine/new
  def new
    @cow = Cow.new
  end

  # GET /kine/1/edit
  def edit
  end

  # POST /kine
  # POST /kine.json
  def create
    @cow = Cow.new(cow_params)

    respond_to do |format|
      if @cow.save
        format.html { redirect_to @cow, notice: 'Cow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cow }
      else
        format.html { render action: 'new' }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kine/1
  # PATCH/PUT /kine/1.json
  def update
    respond_to do |format|
      if @cow.update(cow_params)
        format.html { redirect_to @cow, notice: 'Cow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kine/1
  # DELETE /kine/1.json
  def destroy
    @cow.destroy
    respond_to do |format|
      format.html { redirect_to kine_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cow
      @cow = Cow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cow_params
      params.require(:cow).permit(:name, :ear, :birth, :owner_id, :t01, :t02, :t03, :t04, :t05, :t06, :t07, :t08, :t09, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24, :t25, :t26, :t27, :t28, :t29, :t30, :t31, :t32, :t33, :t34, :t35, :t36, :t37, :t38, :t39, :t40, :t41, :t42, :t43, :t44, :t45, :t46, :t47, :t48, :t49, :t50, :t51, :t52, :t53, :t54, :t55, :t56, :t57, :t58, :t59, :t60, :t61, :t62, :t63, :t64, :t65, :t66, :t67, :t68, :t69, :t70, :t71, :t72, :t73, :t74, :t75, :t76, :t77, :t78, :t79, :t80, :t81, :t82, :t83, :t84, :t85, :t86, :t87, :t88, :t89, :t90, :t91, :t92, :t93, :t94, :t95, :t96, :t97, :t98, :t99)
    end
end

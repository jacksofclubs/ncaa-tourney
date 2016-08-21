class BracketsController < ApplicationController
  before_action :set_bracket, only: [:show, :edit, :update, :destroy]

  # GET /brackets
  # GET /brackets.json
  def index
    @brackets = Bracket.all
  end

  # GET /brackets/1
  # GET /brackets/1.json
  def show
  end

  # GET /brackets/new
  def new
    @bracket = Bracket.new
  end

  # GET /brackets/1/edit
  def edit
  end

  # POST /brackets
  # POST /brackets.json
  def create
    @bracket = Bracket.new(bracket_params)

    respond_to do |format|
      if @bracket.save
        format.html { redirect_to @bracket, notice: 'Bracket was successfully created.' }
        format.json { render :show, status: :created, location: @bracket }
      else
        format.html { render :new }
        format.json { render json: @bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brackets/1
  # PATCH/PUT /brackets/1.json
  def update
    respond_to do |format|
      if @bracket.update(bracket_params)
        format.html { redirect_to @bracket, notice: 'Bracket was successfully updated.' }
        format.json { render :show, status: :ok, location: @bracket }
      else
        format.html { render :edit }
        format.json { render json: @bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brackets/1
  # DELETE /brackets/1.json
  def destroy
    @bracket.destroy
    respond_to do |format|
      format.html { redirect_to brackets_url, notice: 'Bracket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def selectparticipants
    @participants = Participant.all
  end

  def selectteams
    # @teams = Team.all.order(:school_name)
    # @teams = Team.all.map{ |t| [ t.school_name, t.id ] }
    # holds the team name and team id to be used in the select fields
    @teams = Team.all.order(:school_name).map{ |t| [ t.school_name, t.id ] }
    # @regions_options = Region.all.order(:region).map{ |r| [ r.region, r.id ] }
    @regions_options = Region.all.order(:region) #.map{ |r| [ r.region, r.id ] }
    # the order that the seeds appear on the bracket
    @seed_order = [1, 16, 8, 9, 5, 12, 4, 13, 6, 11, 3, 14, 7, 10, 2, 15]
    # the prompt that is displayed in the dropdown box
    @prompts = ['Select 1 Seed', 'Select 16 Seed', 'Select 8 Seed', 'Select 9 Seed',
                'Select 5 Seed', 'Select 12 Seed', 'Select 4 Seed', 'Select 13 Seed',
                'Select 6 Seed', 'Select 11 Seed', 'Select 3 Seed', 'Select 14 Seed',
                'Select 7 Seed', 'Select 10 Seed', 'Select 2 Seed', 'Select 15 Seed']
  end

  def activateparticipants
    # creates SQL statement similar to the following:
    # UPDATE Participants SET playing = false
    Participant.update_all(playing: false)
    # UPDATE Participants SET playing = true where id IN participant_ids[];   
    Participant.where(id: params[:participant_ids]).update_all(playing: true)
    redirect_to brackets_selectteams_path
  end
    # SQL statement that executes 
  def activateteams
    # create SQL statement
    # UPDATE Teams SET playing = true where id IN team_ids[]
    Team.update_all(playing: false)
    Team.where(id: params[:topl_ids]).update_all(playing: true)
    Team.where(id: params[:topr_ids]).update_all(playing: true)
    Team.where(id: params[:botl_ids]).update_all(playing: true)
    Team.where(id: params[:botr_ids]).update_all(playing: true)
    


    redirect_to brackets_selectteams_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bracket
      @bracket = Bracket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bracket_params
      params.require(:bracket).permit(:round_of_tourny, :active)
    end
end

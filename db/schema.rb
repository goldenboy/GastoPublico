# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100512183603) do

  create_table "adjudicatarios", :force => true do |t|
    t.column "cif", :string
    t.column "nombre", :string
    t.column "direction", :text
    t.column "poblacion", :string
    t.column "cp", :string
    t.column "tlf", :string
    t.column "fax", :string
    t.column "email", :string
    t.column "web", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "the_geom", :point, :srid => 4326
  end

  add_index "adjudicatarios", ["cif"], :name => "index_adjudicatarios_on_cif"

  create_table "comentarios", :force => true do |t|
    t.column "usuario_id", :integer
    t.column "licitacion_id", :integer
    t.column "tipo_licitacion_id", :integer
    t.column "comentario", :text
    t.column "is_vote", :boolean
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "the_geom", :point, :srid => 4326
  end

  add_index "comentarios", ["licitacion_id"], :name => "index_comentarios_on_licitacion_id"
  add_index "comentarios", ["tipo_licitacion_id"], :name => "index_comentarios_on_tipo_licitacion_id"
  add_index "comentarios", ["usuario_id"], :name => "index_comentarios_on_usuario_id"

  create_table "comunidad_autonomas", :force => true do |t|
    t.column "nombre", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "estados", :force => true do |t|
    t.column "nombre", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "fuente_datos", :force => true do |t|
    t.column "nombre", :string
    t.column "ultima_importacion", :datetime
    t.column "web", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

# Could not dump table "geography_columns" because of following StandardError
#   Unknown type 'name' for column 'f_table_catalog' /Users/simon/Dropbox/Documents/01.Code/01.Now/git/GastoPublico/vendor/gems/postgis_adapter-0.7.2/lib/postgis_adapter/common_spatial_adapter.rb:52:in `table'/Users/simon/Dropbox/Documents/01.Code/01.Now/git/GastoPublico/vendor/gems/postgis_adapter-0.7.2/lib/postgis_adapter/common_spatial_adapter.rb:50:in `each'/Users/simon/Dropbox/Documents/01.Code/01.Now/git/GastoPublico/vendor/gems/postgis_adapter-0.7.2/lib/postgis_adapter/common_spatial_adapter.rb:50:in `table'/Users/simon/.gem/ruby/1.8/gems/activerecord-2.3.5/lib/active_record/schema_dumper.rb:72:in `tables'/Users/simon/.gem/ruby/1.8/gems/activerecord-2.3.5/lib/active_record/schema_dumper.rb:63:in `each'/Users/simon/.gem/ruby/1.8/gems/activerecord-2.3.5/lib/active_record/schema_dumper.rb:63:in `tables'/Users/simon/.gem/ruby/1.8/gems/activerecord-2.3.5/lib/active_record/schema_dumper.rb:25:in `dump'/Users/simon/.gem/ruby/1.8/gems/activerecord-2.3.5/lib/active_record/schema_dumper.rb:19:in `dump'/Library/Ruby/Gems/1.8/gems/rails-2.3.5/lib/tasks/databases.rake:260/Library/Ruby/Gems/1.8/gems/rails-2.3.5/lib/tasks/databases.rake:259:in `open'/Library/Ruby/Gems/1.8/gems/rails-2.3.5/lib/tasks/databases.rake:259/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:636:in `call'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:636:in `execute'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:631:in `each'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:631:in `execute'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:597:in `invoke_with_call_chain'/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/monitor.rb:242:in `synchronize'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:590:in `invoke_with_call_chain'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:583:in `invoke'/Library/Ruby/Gems/1.8/gems/rails-2.3.5/lib/tasks/databases.rake:117/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:636:in `call'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:636:in `execute'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:631:in `each'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:631:in `execute'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:597:in `invoke_with_call_chain'/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/monitor.rb:242:in `synchronize'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:590:in `invoke_with_call_chain'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:583:in `invoke'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2051:in `invoke_task'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2029:in `top_level'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2029:in `each'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2029:in `top_level'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2068:in `standard_exception_handling'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2023:in `top_level'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2001:in `run'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:2068:in `standard_exception_handling'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/lib/rake.rb:1998:in `run'/Library/Ruby/Gems/1.8/gems/rake-0.8.7/bin/rake:31/usr/bin/rake:19:in `load'/usr/bin/rake:19

  create_table "licitacion_adjudicatarios", :force => true do |t|
    t.column "licitacion_id", :integer
    t.column "adjudicatario_id", :integer
    t.column "importe", :float
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  add_index "licitacion_adjudicatarios", ["adjudicatario_id"], :name => "index_licitacion_adjudicatarios_on_adjudicatario_id"
  add_index "licitacion_adjudicatarios", ["licitacion_id"], :name => "index_licitacion_adjudicatarios_on_licitacion_id"

  create_table "licitacions", :force => true do |t|
    t.column "organo_convocante_id", :integer
    t.column "expediente", :string
    t.column "tipo_procedimiento_id", :integer
    t.column "tipo_licitacion_id", :integer
    t.column "importe", :float
    t.column "fecha_publicacion", :datetime
    t.column "fecha_adjudicacion", :datetime
    t.column "titulo", :string
    t.column "descripcion", :text
    t.column "codigo_cpv_ppal", :string
    t.column "estado_id", :integer
    t.column "url_licitacion", :text
    t.column "votes_up", :integer
    t.column "votes_down", :integer
    t.column "num_comentarios", :integer
    t.column "ref_publicacion", :text
    t.column "fuente_datos_id", :integer
    t.column "programa_financion_id", :integer
    t.column "fecha_ultima_actualizacion", :datetime
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "the_geom", :point, :srid => 4326
  end

  add_index "licitacions", ["codigo_cpv_ppal"], :name => "index_licitacions_on_codigo_cpv_ppal"
  add_index "licitacions", ["estado_id"], :name => "index_licitacions_on_estado_id"
  add_index "licitacions", ["expediente"], :name => "index_licitacions_on_expediente"
  add_index "licitacions", ["fuente_datos_id"], :name => "index_licitacions_on_fuente_datos_id"
  add_index "licitacions", ["importe"], :name => "index_licitacions_on_importe"
  add_index "licitacions", ["organo_convocante_id"], :name => "index_licitacions_on_organo_convocante_id"
  add_index "licitacions", ["programa_financion_id"], :name => "index_licitacions_on_programa_financion_id"
  add_index "licitacions", ["tipo_licitacion_id"], :name => "index_licitacions_on_tipo_licitacion_id"
  add_index "licitacions", ["tipo_procedimiento_id"], :name => "index_licitacions_on_tipo_procedimiento_id"
  add_index "licitacions", ["titulo"], :name => "index_licitacions_on_titulo"

  create_table "organisations", :force => true do |t|
    t.column "name", :string
    t.column "parent_id", :integer
    t.column "lft", :integer
    t.column "rgt", :integer
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "organo_convocantes", :force => true do |t|
    t.column "perfil_contratante_id", :integer
    t.column "nombre", :text
    t.column "direccion", :string
    t.column "poblacion", :string
    t.column "cp", :string
    t.column "tlf", :string
    t.column "fax", :string
    t.column "email", :string
    t.column "web", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  add_index "organo_convocantes", ["perfil_contratante_id"], :name => "index_organo_convocantes_on_perfil_contratante_id"

  create_table "partido_politicos", :force => true do |t|
    t.column "nombre", :string
    t.column "siglas", :string
    t.column "web", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "perfil_contratantes", :force => true do |t|
    t.column "tipo_perfil_contratante_id", :integer
    t.column "nombre", :string
    t.column "cif", :string
    t.column "wikipedia_url", :text
    t.column "partido_politico_id", :integer
    t.column "foto", :text
    t.column "escudo", :text
    t.column "habitantes", :integer
    t.column "alcalde_voota_link", :text
    t.column "provincia_id", :integer
    t.column "comunidad_autonoma_id", :integer
    t.column "direccion", :text
    t.column "poblacion", :text
    t.column "cp", :string
    t.column "tlf", :string
    t.column "fax", :string
    t.column "web", :text
    t.column "email", :string
    t.column "presupuesto_total", :float
    t.column "presupuesto_url", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "the_geom", :point, :srid => 4326
  end

  add_index "perfil_contratantes", ["cif"], :name => "index_perfil_contratantes_on_cif"
  add_index "perfil_contratantes", ["comunidad_autonoma_id"], :name => "index_perfil_contratantes_on_comunidad_autonoma_id"
  add_index "perfil_contratantes", ["partido_politico_id"], :name => "index_perfil_contratantes_on_partido_politico_id"
  add_index "perfil_contratantes", ["provincia_id"], :name => "index_perfil_contratantes_on_provincia_id"
  add_index "perfil_contratantes", ["tipo_perfil_contratante_id"], :name => "index_perfil_contratantes_on_tipo_perfil_contratante_id"

  create_table "programa_financiacions", :force => true do |t|
    t.column "nombre", :string
    t.column "nivel", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "provincias", :force => true do |t|
    t.column "nombre", :string
    t.column "comunidad_autonoma_id", :integer
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "tipo_licitacions", :force => true do |t|
    t.column "nombre", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "tipo_perfil_contratantes", :force => true do |t|
    t.column "nombre", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "tipo_procedimientos", :force => true do |t|
    t.column "nombre", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "usuarios", :force => true do |t|
    t.column "token", :string
    t.column "nombre", :string
    t.column "email", :string
    t.column "web", :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email"
  add_index "usuarios", ["token"], :name => "index_usuarios_on_token"

end

let
    Origen = Csv.Document(File.Contents("C:\Analista de datos\Portafolio\Global Electricity Demand and Generation.csv"),[Delimiter=";", Columns=5, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Encabezados promovidos" = Table.PromoteHeaders(Origen, [PromoteAllScalars=true]),
    #"Tipo cambiado" = Table.TransformColumnTypes(#"Encabezados promovidos",{{"Entity", type text}, {"Code", type text}, {"Year", Int64.Type}, {"Electricity demand - TWh", Int64.Type}, {"Electricity generation - TWh", Int64.Type}})
in
    #"Tipo cambiado"
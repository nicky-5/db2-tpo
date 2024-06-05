#! /usr/bin/env nix-shell
#! nix-shell -i fish --pure
#! nix-shell -p fish redli jq

for row in (jq -r '.[] | [.place, .lon, .lat] | @csv' .places.json)
    set arr (string split , $row)

    set place (string unescape $arr[1])
    set longitude $arr[2]
    set latitude $arr[3]

    set count (echo "GEOSEARCH bataxi FROMLONLAT $longitude $latitude BYRADIUS 1 KM" | redli | count)
    echo "1km from $place: $count"
end

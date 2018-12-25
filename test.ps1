<#
    Test function to use pipeline
#>
function Get-BmacM {
    [cmdletbinding()]
    Param (
        # Parameter help description
        [Parameter(ValueFromPipeline)]
        [char]$BmacChar
    )

    Begin {

    }

    Process {
        if($BmacChar -eq 'M'){
            return $BmacChar
        }
    }

    End {

    }
}

#region MAIN LOOP
$myInput = 'B','C','D','M','X','M','Y','M'
$myResult = $myInput | Get-BmacM
$myResult
#endregion MAIN LOO
function draw()
{
    // Main entry point got the map canvas example
 
    var canvas = document.getElementById('map');
 
    // Canvas supported?
    if(canvas.getContext)
    {
        var ctx = canvas.getContext('2d');
 
        // Draw the background
        drawBackground(ctx);
 
        // Draw the map background
        drawMapBackground(ctx)
 
        // Draw the map background
        drawGraticule(ctx);
 
        // Draw the land
        drawLandMass(ctx);
 
        // One-shot position request. (f supported)
        if (navigator.geolocation)
            navigator.geolocation.getCurrentPosition(plotPosition);
 
    }
    else
    {
        alert("Canvas not supported!");
    }
}

function drawBackground(ctx)
{
    // Black background
    ctx.fillStyle = "rgb(0,0,0)";
 
    // Draw rectangle for the background
    ctx.fillRect(iCANVAS_START_X_POS, iCANVAS_START_Y_POS, (iCANVAS_START_X_POS + iCANVAS_WIDTH), iCANVAS_START_Y_POS + iCANVAS_HEIGHT);
 
    ctx.stroke();
}

function drawMapBackground(ctx)
{
    // Ocean blue colour!
    ctx.fillStyle = "rgb(10, 133, 255)";
 
    // Draw rectangle for the map
    ctx.fillRect(iMAP_START_X_POS, iMAP_START_Y_POS, iMAP_WIDTH, iMAP_HEIGHT);
 
}

function drawGraticule(ctx)
{
    // Set distance between lines
    var iDEGREES_BETWEEN_LAT_GRID_LINES = 10;
    var iDEGREES_BETWEEN_LON_GRID_LINES = 10;
 
    // Style
    ctx.lineWidth = 0.2;
    ctx.strokeStyle = "rgba(0, 0, 0, 0.1)";
    ctx.fillStyle = 'rgb(255,255,255)';
 
    // Font styling
    ctx.font = 'italic 10px sans-serif';
    ctx.textBaseline = 'top';
 
    drawLatitudeLines(ctx, iDEGREES_BETWEEN_LAT_GRID_LINES);
    drawLongitudeLines(ctx, iDEGREES_BETWEEN_LON_GRID_LINES);
}

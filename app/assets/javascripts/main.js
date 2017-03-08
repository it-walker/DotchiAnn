// ポップオーバーを機能させるには自分でjavascript書く必要あり
$(function() {
    $('[data-toggle="popover"]').popover();

    $('#clear-left').click(function() {
        clearTextBox('#left');
    });

    $('#clear-right').click(function() {
        clearTextBox('#right');
    });

    // 指定された要素ID以下のテキストボックスの値をクリアします。
    function clearTextBox(id) {
        $(id + ' input[type="text"]').each(function() {
            $(this).val('');
        });
    };
});

// ポップオーバーが表示されたら発動
// $('#popover-hint').on('shown.bs.popover', function() {
//     // ポップオーバー（ヒント）が表示されたら点数が減る
//     // var currentPoint = $('.tensuu').text();
//     // var newPoint = currentPoint - 10;
//     // $('.tensuu').text(newPoint);
// });
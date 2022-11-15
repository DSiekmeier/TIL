# start of content
file_name="README.md"
content_start_line=$(grep -n '<!-- start of content -->' $file_name | cut -f1 -d:)

# count entries, beginning from actual content
entries=$(tail -n +$content_start_line $file_name | grep -c '^-')
categories=$(tail -n +$content_start_line $file_name | grep -c -E '^#[^#]')
sub_categories=$(tail -n +$content_start_line $file_name | grep -c '^##')

echo "Currently counting **$entries entries** in **$categories categories** and **$sub_categories sub categories**."

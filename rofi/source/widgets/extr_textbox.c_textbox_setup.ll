; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_setup.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@tbfc_entry_free = common dso_local global i64 0, align 8
@tbfc_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @textbox_setup() #0 {
  %1 = load i32, i32* @g_str_hash, align 4
  %2 = load i32, i32* @g_str_equal, align 4
  %3 = load i64, i64* @tbfc_entry_free, align 8
  %4 = trunc i64 %3 to i32
  %5 = call i32 @g_hash_table_new_full(i32 %1, i32 %2, i32* null, i32 %4)
  store i32 %5, i32* @tbfc_cache, align 4
  ret void
}

declare dso_local i32 @g_hash_table_new_full(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

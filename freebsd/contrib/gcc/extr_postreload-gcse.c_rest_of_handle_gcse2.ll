; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_rest_of_handle_gcse2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_rest_of_handle_gcse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_gcse2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_gcse2() #0 {
  %1 = call i32 (...) @get_insns()
  %2 = call i32 @gcse_after_reload_main(i32 %1)
  %3 = call i32 (...) @get_insns()
  %4 = call i32 @rebuild_jump_labels(i32 %3)
  %5 = call i32 (...) @get_insns()
  %6 = call i32 (...) @max_reg_num()
  %7 = call i32 @delete_trivially_dead_insns(i32 %5, i32 %6)
  ret i32 0
}

declare dso_local i32 @gcse_after_reload_main(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @rebuild_jump_labels(i32) #1

declare dso_local i32 @delete_trivially_dead_insns(i32, i32) #1

declare dso_local i32 @max_reg_num(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

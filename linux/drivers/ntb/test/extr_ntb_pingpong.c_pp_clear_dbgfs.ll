; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_clear_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_clear_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_ctx*)* @pp_clear_dbgfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_clear_dbgfs(%struct.pp_ctx* %0) #0 {
  %2 = alloca %struct.pp_ctx*, align 8
  store %struct.pp_ctx* %0, %struct.pp_ctx** %2, align 8
  %3 = load %struct.pp_ctx*, %struct.pp_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.pp_ctx, %struct.pp_ctx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @debugfs_remove_recursive(i32 %5)
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

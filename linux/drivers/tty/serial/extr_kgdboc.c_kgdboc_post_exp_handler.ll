; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_kgdboc_post_exp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_kgdboc_post_exp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ignore_console_lock_warning = common dso_local global i32 0, align 4
@kgdb_connected = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@kgdboc_use_kms = common dso_local global i64 0, align 8
@dbg_restore_graphics = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdboc_post_exp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdboc_post_exp_handler() #0 {
  %1 = call i32 @atomic_dec(i32* @ignore_console_lock_warning)
  %2 = load i32, i32* @kgdb_connected, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = call i32 @module_put(i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @kgdboc_use_kms, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, i64* @dbg_restore_graphics, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  store i64 0, i64* @dbg_restore_graphics, align 8
  %14 = call i32 (...) @con_debug_leave()
  br label %15

15:                                               ; preds = %13, %10, %7
  %16 = call i32 (...) @kgdboc_restore_input()
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @con_debug_leave(...) #1

declare dso_local i32 @kgdboc_restore_input(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

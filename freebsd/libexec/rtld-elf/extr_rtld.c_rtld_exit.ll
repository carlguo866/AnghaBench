; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_rtld_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtld_bind_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rtld_exit()\00", align 1
@list_fini = common dso_local global i32 0, align 4
@libmap_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rtld_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtld_exit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @rtld_bind_lock, align 4
  %3 = call i32 @wlock_acquire(i32 %2, i32* %1)
  %4 = call i32 @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @objlist_call_fini(i32* @list_fini, i32* null, i32* %1)
  %6 = load i32, i32* @libmap_disable, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @lm_fini()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @rtld_bind_lock, align 4
  %12 = call i32 @lock_release(i32 %11, i32* %1)
  ret void
}

declare dso_local i32 @wlock_acquire(i32, i32*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @objlist_call_fini(i32*, i32*, i32*) #1

declare dso_local i32 @lm_fini(...) #1

declare dso_local i32 @lock_release(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

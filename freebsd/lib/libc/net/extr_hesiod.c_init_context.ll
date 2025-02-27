; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_hesiod.c_init_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_hesiod.c_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inited = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@HES_ER_CONFIG = common dso_local global i32 0, align 4
@errval = common dso_local global i32 0, align 4
@HES_ER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_context() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @inited, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  store i32 1, i32* @inited, align 4
  %5 = call i64 @hesiod_init(i32* @context)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i32, i32* @HES_ER_CONFIG, align 4
  store i32 %8, i32* @errval, align 4
  store i32 -1, i32* %1, align 4
  br label %12

9:                                                ; preds = %4
  %10 = load i32, i32* @HES_ER_OK, align 4
  store i32 %10, i32* @errval, align 4
  br label %11

11:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i64 @hesiod_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

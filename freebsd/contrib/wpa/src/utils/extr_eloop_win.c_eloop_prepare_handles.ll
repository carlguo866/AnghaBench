; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_prepare_handles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_prepare_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@eloop = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @eloop_prepare_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eloop_prepare_handles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 2), align 8
  %6 = add nsw i32 %4, %5
  %7 = add nsw i32 %6, 8
  %8 = icmp sgt i32 %3, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

10:                                               ; preds = %0
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 3), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %13 = mul nsw i32 %12, 2
  %14 = call i32* @os_realloc_array(i32* %11, i32 %13, i32 4)
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %22

18:                                               ; preds = %10
  %19 = load i32*, i32** %2, align 8
  store i32* %19, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 3), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %17, %9
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32* @os_realloc_array(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

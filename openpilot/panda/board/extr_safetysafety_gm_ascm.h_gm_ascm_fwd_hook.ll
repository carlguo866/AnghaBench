; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_gm_ascm.h_gm_ascm_fwd_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_gm_ascm.h_gm_ascm_fwd_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @gm_ascm_fwd_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm_ascm_fwd_hook(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 -1, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = call i32 @GET_ADDR(%struct.TYPE_5__* %12)
  store i32 %13, i32* %6, align 4
  store i32 2, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 338
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 340
  br i1 %18, label %19, label %29

19:                                               ; preds = %16, %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i32 @GET_BYTE(%struct.TYPE_5__* %20, i32 4)
  %22 = and i32 %21, 16
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 337
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 339
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 788
  br i1 %37, label %38, label %50

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 21
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 2097151
  %47 = or i32 %42, %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %38, %35
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @GET_ADDR(%struct.TYPE_5__*) #1

declare dso_local i32 @GET_BYTE(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

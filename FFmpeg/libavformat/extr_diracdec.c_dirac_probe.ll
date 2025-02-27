; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_diracdec.c_dirac_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_diracdec.c_dirac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @dirac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @AV_RL32(i64 %7)
  %9 = call i64 @MKTAG(i8 signext 66, i8 signext 66, i8 signext 67, i8 signext 68)
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 5
  %17 = call i32 @AV_RB32(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %18, 13
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %46

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, 13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %27 to i64
  %29 = icmp sgt i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i64 @AV_RL32(i64 %39)
  %41 = call i64 @MKTAG(i8 signext 66, i8 signext 66, i8 signext 67, i8 signext 68)
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %43, %30, %20, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @AV_RL32(i64) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @AV_RB32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

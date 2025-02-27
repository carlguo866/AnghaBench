; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_WriteDDC2Data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_WriteDDC2Data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*, i16)* @SiS_WriteDDC2Data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_WriteDDC2Data(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 128, i16* %6, align 2
  store i16 0, i16* %5, align 2
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %14 = call i32 @SiS_SetSCLKLow(%struct.SiS_Private* %13)
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %32 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SiS_SetRegANDOR(i32 %24, i32 %27, i32 %30, i32 %33)
  br label %46

35:                                               ; preds = %12
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SiS_SetRegANDOR(i32 %38, i32 %41, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %35, %21
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %48 = call i32 @SiS_SetSCLKHigh(%struct.SiS_Private* %47)
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = ashr i32 %50, 1
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %6, align 2
  br label %53

53:                                               ; preds = %46
  %54 = load i16, i16* %5, align 2
  %55 = add i16 %54, 1
  store i16 %55, i16* %5, align 2
  br label %8

56:                                               ; preds = %8
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %58 = call zeroext i16 @SiS_CheckACK(%struct.SiS_Private* %57)
  store i16 %58, i16* %7, align 2
  %59 = load i16, i16* %7, align 2
  ret i16 %59
}

declare dso_local i32 @SiS_SetSCLKLow(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SiS_SetSCLKHigh(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_CheckACK(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

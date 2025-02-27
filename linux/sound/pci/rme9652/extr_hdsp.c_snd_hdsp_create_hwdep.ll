; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_hwdep.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_hwdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.hdsp = type { %struct.snd_hwdep* }
%struct.snd_hwdep = type { %struct.TYPE_2__, i32, %struct.hdsp* }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"HDSP hwdep\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"HDSP hwdep interface\00", align 1
@snd_hdsp_hwdep_ioctl = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*)* @snd_hdsp_create_hwdep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create_hwdep(%struct.snd_card* %0, %struct.hdsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca %struct.snd_hwdep*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdsp* %1, %struct.hdsp** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = call i32 @snd_hwdep_new(%struct.snd_card* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, %struct.snd_hwdep** %6)
  store i32 %9, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %15 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 0
  store %struct.snd_hwdep* %14, %struct.snd_hwdep** %16, align 8
  %17 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %18 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %19 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %18, i32 0, i32 2
  store %struct.hdsp* %17, %struct.hdsp** %19, align 8
  %20 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %21 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** @snd_hdsp_hwdep_ioctl, align 8
  %25 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %26 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @snd_hdsp_hwdep_ioctl, align 8
  %29 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %30 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %13, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @snd_hwdep_new(%struct.snd_card*, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_chip_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_chip_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"CS4231\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CS4231A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CS4232\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CS4232A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CS4235\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CS4236\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"CS4236B\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CS4237B\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CS4238B\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"CS4239\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"AMD InterWave\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"AD1845\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"OPTi 93x\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"AD1847\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"AD1848\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"CS4248\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"CMI8330/C3D\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @snd_wss_chip_id(%struct.snd_wss* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snd_wss*, align 8
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %4 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %5 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %30 [
    i32 141, label %7
    i32 140, label %8
    i32 139, label %9
    i32 138, label %10
    i32 137, label %11
    i32 136, label %12
    i32 135, label %13
    i32 134, label %14
    i32 133, label %15
    i32 132, label %16
    i32 130, label %17
    i32 129, label %18
    i32 145, label %24
    i32 128, label %25
    i32 144, label %26
    i32 143, label %27
    i32 131, label %28
    i32 142, label %29
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %31

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %31

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %31

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %31

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %31

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %31

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %31

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %31

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %31

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %31

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %20 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %31

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %31

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %31

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %31

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %31

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %31

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %31

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_mixer.c_snd_opl4_create_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_mixer.c_snd_opl4_create_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c",OPL4\00", align 1
@snd_opl4_controls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_opl4_create_mixer(%struct.snd_opl4* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  %7 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %8 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %7, i32 0, i32 0
  %9 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  store %struct.snd_card* %9, %struct.snd_card** %4, align 8
  %10 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcat(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %19 = load i32*, i32** @snd_opl4_controls, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %24 = call i32 @snd_ctl_new1(i32* %22, %struct.snd_opl4* %23)
  %25 = call i32 @snd_ctl_add(%struct.snd_card* %18, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_opl4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

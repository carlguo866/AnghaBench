; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_tuner_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_tuner_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"sleep dib8096p: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib8096p_tuner_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096p_tuner_sleep(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  store %struct.dib8000_state* %9, %struct.dib8000_state** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %13 = call i32 @dib8000_read_word(%struct.dib8000_state* %12, i32 1922)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dib8000_write_word(%struct.dib8000_state* %37, i32 1922, i32 %38)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda8083.c_tda8083_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda8083.c_tda8083_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8083_state* }
%struct.tda8083_state = type { i32 }

@tda8083_init_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda8083_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8083_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8083_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda8083_state*, %struct.tda8083_state** %6, align 8
  store %struct.tda8083_state* %7, %struct.tda8083_state** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 44
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.tda8083_state*, %struct.tda8083_state** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @tda8083_init_tab, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tda8083_writereg(%struct.tda8083_state* %12, i32 %13, i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.tda8083_state*, %struct.tda8083_state** %3, align 8
  %25 = call i32 @tda8083_writereg(%struct.tda8083_state* %24, i32 0, i32 60)
  %26 = load %struct.tda8083_state*, %struct.tda8083_state** %3, align 8
  %27 = call i32 @tda8083_writereg(%struct.tda8083_state* %26, i32 0, i32 4)
  ret i32 0
}

declare dso_local i32 @tda8083_writereg(%struct.tda8083_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_dig.c_au8522_read_ucblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_dig.c_au8522_read_ucblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.au8522_state* }
%struct.au8522_state = type { i64 }

@VSB_8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @au8522_read_ucblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_read_ucblocks(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.au8522_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.au8522_state*, %struct.au8522_state** %7, align 8
  store %struct.au8522_state* %8, %struct.au8522_state** %5, align 8
  %9 = load %struct.au8522_state*, %struct.au8522_state** %5, align 8
  %10 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VSB_8, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.au8522_state*, %struct.au8522_state** %5, align 8
  %16 = call i32 @au8522_readreg(%struct.au8522_state* %15, i32 16519)
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.au8522_state*, %struct.au8522_state** %5, align 8
  %20 = call i32 @au8522_readreg(%struct.au8522_state* %19, i32 17731)
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  ret i32 0
}

declare dso_local i32 @au8522_readreg(%struct.au8522_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

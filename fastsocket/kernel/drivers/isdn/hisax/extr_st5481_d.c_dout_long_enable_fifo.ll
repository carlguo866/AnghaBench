; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_dout_long_enable_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_dout_long_enable_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.st5481_adapter* }
%struct.st5481_adapter = type { %struct.st5481_d_out }
%struct.st5481_d_out = type { i32 }

@OUT_D_COUNTER = common dso_local global i32 0, align 4
@ST_DOUT_LONG_WAIT_DEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @dout_long_enable_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dout_long_enable_fifo(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.st5481_adapter*, align 8
  %8 = alloca %struct.st5481_d_out*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.st5481_adapter*, %struct.st5481_adapter** %10, align 8
  store %struct.st5481_adapter* %11, %struct.st5481_adapter** %7, align 8
  %12 = load %struct.st5481_adapter*, %struct.st5481_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %12, i32 0, i32 0
  store %struct.st5481_d_out* %13, %struct.st5481_d_out** %8, align 8
  %14 = load %struct.st5481_adapter*, %struct.st5481_adapter** %7, align 8
  %15 = load i32, i32* @OUT_D_COUNTER, align 4
  %16 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %14, i32 %15, i32 16, i32* null, i32* null)
  %17 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %18 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %17, i32 0, i32 0
  %19 = load i32, i32* @ST_DOUT_LONG_WAIT_DEN, align 4
  %20 = call i32 @FsmChangeState(i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter*, i32, i32, i32*, i32*) #1

declare dso_local i32 @FsmChangeState(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

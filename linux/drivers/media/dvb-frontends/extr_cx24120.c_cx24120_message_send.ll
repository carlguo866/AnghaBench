; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_message_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_message_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cx24120_cmd = type { i32, i32, i32* }

@CX24120_REG_CMD_START = common dso_local global i32 0, align 4
@CX24120_REG_CMD_ARGS = common dso_local global i32 0, align 4
@CX24120_REG_CMD_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error sending message to firmware\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"sent message 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, %struct.cx24120_cmd*)* @cx24120_message_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_message_send(%struct.cx24120_state* %0, %struct.cx24120_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24120_state*, align 8
  %5 = alloca %struct.cx24120_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %4, align 8
  store %struct.cx24120_cmd* %1, %struct.cx24120_cmd** %5, align 8
  %7 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %8 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %13 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cx24120_check_cmd(%struct.cx24120_state* %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %19 = load i32, i32* @CX24120_REG_CMD_START, align 4
  %20 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cx24120_writereg(%struct.cx24120_state* %18, i32 %19, i32 %22)
  %24 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %25 = load i32, i32* @CX24120_REG_CMD_ARGS, align 4
  %26 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cx24120_writeregs(%struct.cx24120_state* %24, i32 %25, i32* %29, i32 %32, i32 1)
  %34 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %35 = load i32, i32* @CX24120_REG_CMD_END, align 4
  %36 = call i32 @cx24120_writereg(%struct.cx24120_state* %34, i32 %35, i32 1)
  store i32 1000, i32* %6, align 4
  br label %37

37:                                               ; preds = %52, %17
  %38 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %39 = load i32, i32* @CX24120_REG_CMD_END, align 4
  %40 = call i64 @cx24120_readreg(%struct.cx24120_state* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = call i32 @msleep(i32 20)
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 20
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EREMOTEIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %42
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %55 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.cx24120_cmd*, %struct.cx24120_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %48
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @cx24120_check_cmd(%struct.cx24120_state*, i32) #1

declare dso_local i32 @cx24120_writereg(%struct.cx24120_state*, i32, i32) #1

declare dso_local i32 @cx24120_writeregs(%struct.cx24120_state*, i32, i32*, i32, i32) #1

declare dso_local i64 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

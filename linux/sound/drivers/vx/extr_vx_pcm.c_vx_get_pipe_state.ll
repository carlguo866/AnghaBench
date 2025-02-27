; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_get_pipe_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_get_pipe_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32, i32 }
%struct.vx_rmh = type { i32* }

@CMD_PIPE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*, i32*)* @vx_get_pipe_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_get_pipe_state(%struct.vx_core* %0, %struct.vx_pipe* %1, i32* %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.vx_pipe*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vx_rmh, align 8
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @CMD_PIPE_STATE, align 4
  %10 = call i32 @vx_init_rmh(%struct.vx_rmh* %8, i32 %9)
  %11 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %12 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %15 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vx_set_pipe_cmd_params(%struct.vx_rmh* %8, i32 %13, i32 %16, i32 0)
  %18 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %19 = call i32 @vx_send_msg(%struct.vx_core* %18, %struct.vx_rmh* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %8, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %28 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %22, %3
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_set_pipe_cmd_params(%struct.vx_rmh*, i32, i32, i32) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

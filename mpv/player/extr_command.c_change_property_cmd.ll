; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_change_property_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_change_property_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_cmd_ctx*, i8*, i32, i8*)* @change_property_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_property_cmd(%struct.mp_cmd_ctx* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.mp_cmd_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mp_property_do(i8* %10, i32 %11, i8* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @show_property_status(%struct.mp_cmd_ctx* %17, i8* %18, i32 %19)
  ret void
}

declare dso_local i32 @mp_property_do(i8*, i32, i8*, i32) #1

declare dso_local i32 @show_property_status(%struct.mp_cmd_ctx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

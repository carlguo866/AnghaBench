; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_set_nfr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_set_nfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24113_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx24113_state*, i32, i32, i32)* @cx24113_set_nfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx24113_set_nfr(%struct.cx24113_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cx24113_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx24113_state* %0, %struct.cx24113_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 1
  %13 = and i32 %12, 255
  %14 = call i32 @cx24113_writereg(%struct.cx24113_state* %10, i32 25, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 1
  %17 = shl i32 %16, 7
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 11
  %20 = and i32 %19, 127
  %21 = or i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.cx24113_state*, %struct.cx24113_state** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @cx24113_writereg(%struct.cx24113_state* %22, i32 26, i32 %23)
  %25 = load %struct.cx24113_state*, %struct.cx24113_state** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 3
  %28 = and i32 %27, 255
  %29 = call i32 @cx24113_writereg(%struct.cx24113_state* %25, i32 27, i32 %28)
  %30 = load %struct.cx24113_state*, %struct.cx24113_state** %5, align 8
  %31 = call i32 @cx24113_readreg(%struct.cx24113_state* %30, i32 28)
  %32 = and i32 %31, 31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cx24113_state*, %struct.cx24113_state** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 7
  %37 = shl i32 %36, 5
  %38 = or i32 %34, %37
  %39 = call i32 @cx24113_writereg(%struct.cx24113_state* %33, i32 28, i32 %38)
  %40 = load %struct.cx24113_state*, %struct.cx24113_state** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @cx24113_set_Fref(%struct.cx24113_state* %40, i32 %42)
  ret void
}

declare dso_local i32 @cx24113_writereg(%struct.cx24113_state*, i32, i32) #1

declare dso_local i32 @cx24113_readreg(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_set_Fref(%struct.cx24113_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

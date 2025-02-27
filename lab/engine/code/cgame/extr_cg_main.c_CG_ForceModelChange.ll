; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_main.c_CG_ForceModelChange.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_main.c_CG_ForceModelChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CLIENTS = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ForceModelChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ForceModelChange() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %20, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_CLIENTS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load i32, i32* @CS_PLAYERS, align 4
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %8, %9
  %11 = call i8* @CG_ConfigString(i32 %10)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  br label %20

17:                                               ; preds = %7
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @CG_NewClientInfo(i32 %18)
  br label %20

20:                                               ; preds = %17, %16
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %3

23:                                               ; preds = %3
  ret void
}

declare dso_local i8* @CG_ConfigString(i32) #1

declare dso_local i32 @CG_NewClientInfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

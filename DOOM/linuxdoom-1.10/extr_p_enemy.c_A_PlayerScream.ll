; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_PlayerScream.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_enemy.c_A_PlayerScream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@sfx_pldeth = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@sfx_pdiehi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_PlayerScream(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @sfx_pldeth, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @gamemode, align 8
  %6 = load i64, i64* @commercial, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, -50
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @sfx_pdiehi, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %8, %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @S_StartSound(%struct.TYPE_4__* %16, i32 %17)
  ret void
}

declare dso_local i32 @S_StartSound(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

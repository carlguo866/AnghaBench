; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mode_option_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_mode_option_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @team_mode_option_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_mode_option_set(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_gsetter_ctx*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %4, align 8
  %5 = load %struct.team*, %struct.team** %3, align 8
  %6 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @team_change_mode(%struct.team* %5, i32 %9)
  ret i32 %10
}

declare dso_local i32 @team_change_mode(%struct.team*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_get_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_get_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_mcp_link_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_bulletin_content = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qed_vf_get_link_state(%struct.qed_hwfn* %0, %struct.qed_mcp_link_state* %1, %struct.qed_bulletin_content* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_mcp_link_state*, align 8
  %6 = alloca %struct.qed_bulletin_content*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_mcp_link_state* %1, %struct.qed_mcp_link_state** %5, align 8
  store %struct.qed_bulletin_content* %2, %struct.qed_bulletin_content** %6, align 8
  %7 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %8 = call i32 @memset(%struct.qed_mcp_link_state* %7, i32 0, i32 48)
  %9 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %10 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %13 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %15 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %18 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %20 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %23 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %25 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %28 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %30 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %33 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %35 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %38 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %40 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %43 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %45 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %48 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %50 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %53 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %55 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %58 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %60 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %63 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %6, align 8
  %65 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %5, align 8
  %68 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local i32 @memset(%struct.qed_mcp_link_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

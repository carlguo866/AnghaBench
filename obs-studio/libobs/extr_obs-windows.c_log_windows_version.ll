; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_windows_version.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_windows_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.win_version_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Windows Version: %d.%d Build %d (revision: %d; %s-bit)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_windows_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_windows_version() #0 {
  %1 = alloca %struct.win_version_info, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 @get_win_ver(%struct.win_version_info* %1)
  %5 = call i32 (...) @is_64_bit_windows()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %9, i8** %3, align 8
  %10 = load i32, i32* @LOG_INFO, align 4
  %11 = getelementptr inbounds %struct.win_version_info, %struct.win_version_info* %1, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.win_version_info, %struct.win_version_info* %1, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.win_version_info, %struct.win_version_info* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.win_version_info, %struct.win_version_info* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @blog(i32 %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %18, i8* %19)
  ret void
}

declare dso_local i32 @get_win_ver(%struct.win_version_info*) #1

declare dso_local i32 @is_64_bit_windows(...) #1

declare dso_local i32 @blog(i32, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

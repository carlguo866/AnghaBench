; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_cli_cmd_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl*, i32, i8**)* @hostapd_cli_cmd_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_cli_cmd_help(%struct.wpa_ctrl* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.wpa_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %7 = load i32, i32* @stdout, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8**, i8*** %6, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i8* [ %13, %10 ], [ null, %14 ]
  %17 = call i32 @print_help(i32 %7, i8* %16)
  ret i32 0
}

declare dso_local i32 @print_help(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_audit_mkdev_log.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_audit_mkdev_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"file %s %s 0%o %u %u\0A\00", align 1
@tomoyo_mac_keywords = common dso_local global i32* null, align 8
@tomoyo_pnnn2mac = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_request_info*)* @tomoyo_audit_mkdev_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_audit_mkdev_log(%struct.tomoyo_request_info* %0) #0 {
  %2 = alloca %struct.tomoyo_request_info*, align 8
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %2, align 8
  %3 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %4 = load i32*, i32** @tomoyo_mac_keywords, align 8
  %5 = load i64*, i64** @tomoyo_pnnn2mac, align 8
  %6 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %7 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i64, i64* %5, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %4, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %16 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %23 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %28 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %2, align 8
  %33 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tomoyo_supervisor(%struct.tomoyo_request_info* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %21, i32 %26, i32 %31, i32 %36)
  ret i32 %37
}

declare dso_local i32 @tomoyo_supervisor(%struct.tomoyo_request_info*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

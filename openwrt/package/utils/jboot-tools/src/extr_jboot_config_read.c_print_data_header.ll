; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/jboot-tools/src/extr_jboot_config_read.c_print_data_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/jboot-tools/src/extr_jboot_config_read.c_print_data_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_header = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [62 x i8] c"id: 0x%02X type: 0x%02X unknown: 0x%04X length: 0x%04X\0Adata: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_header*)* @print_data_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_data_header(%struct.data_header* %0) #0 {
  %2 = alloca %struct.data_header*, align 8
  %3 = alloca i64, align 8
  store %struct.data_header* %0, %struct.data_header** %2, align 8
  %4 = load %struct.data_header*, %struct.data_header** %2, align 8
  %5 = getelementptr inbounds %struct.data_header, %struct.data_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.data_header*, %struct.data_header** %2, align 8
  %8 = getelementptr inbounds %struct.data_header, %struct.data_header* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.data_header*, %struct.data_header** %2, align 8
  %11 = getelementptr inbounds %struct.data_header, %struct.data_header* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.data_header*, %struct.data_header** %2, align 8
  %14 = getelementptr inbounds %struct.data_header, %struct.data_header* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12, i32 %15)
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %32, %1
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.data_header*, %struct.data_header** %2, align 8
  %20 = getelementptr inbounds %struct.data_header, %struct.data_header* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.data_header*, %struct.data_header** %2, align 8
  %26 = getelementptr inbounds %struct.data_header, %struct.data_header* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %17

35:                                               ; preds = %17
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

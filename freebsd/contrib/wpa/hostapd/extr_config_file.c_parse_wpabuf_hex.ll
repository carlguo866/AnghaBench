; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_parse_wpabuf_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_parse_wpabuf_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Line %d: Invalid %s '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.wpabuf**, i8*)* @parse_wpabuf_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_wpabuf_hex(i32 %0, i8* %1, %struct.wpabuf** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpabuf**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %19 = call i32 @wpabuf_free(%struct.wpabuf* %18)
  %20 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %20, align 8
  store i32 0, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.wpabuf* @wpabuf_parse_bin(i8* %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %10, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %25 = icmp ne %struct.wpabuf* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29, i8* %30)
  store i32 -1, i32* %5, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %33, align 8
  %35 = call i32 @wpabuf_free(%struct.wpabuf* %34)
  %36 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %37 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf* %36, %struct.wpabuf** %37, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %26, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_parse_bin(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

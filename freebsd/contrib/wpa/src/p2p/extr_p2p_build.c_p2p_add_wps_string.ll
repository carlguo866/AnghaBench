; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_add_wps_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_add_wps_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, i32, i8*)* @p2p_add_wps_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_add_wps_string(%struct.wpabuf* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @os_strlen(i8* %12)
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i64 [ %13, %11 ], [ 0, %14 ]
  store i64 %16, i64* %8, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i32 @wpabuf_tailroom(%struct.wpabuf* %17)
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %8, align 8
  %21 = add i64 4, %20
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %53

24:                                               ; preds = %15
  %25 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = call i32 @wpabuf_put_be16(%struct.wpabuf* %25, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = call i32 @wpabuf_tailroom(%struct.wpabuf* %32)
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %53

36:                                               ; preds = %31
  %37 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %38 = call i32 @wpabuf_put_be16(%struct.wpabuf* %37, i64 1)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %40 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i8 signext 32)
  store i32 0, i32* %4, align 4
  br label %53

41:                                               ; preds = %24
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @wpabuf_put_be16(%struct.wpabuf* %42, i64 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @wpabuf_put_data(%struct.wpabuf* %48, i8* %49, i64 %50)
  br label %52

52:                                               ; preds = %47, %41
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %36, %35, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_conf_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_conf_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session_conf = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iscsi_session_conf*, i32, %struct.iscsi_session_conf*)* @iscsi_session_conf_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_session_conf_matches(i32 %0, %struct.iscsi_session_conf* %1, i32 %2, %struct.iscsi_session_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_session_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_session_conf*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.iscsi_session_conf* %1, %struct.iscsi_session_conf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.iscsi_session_conf* %3, %struct.iscsi_session_conf** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %54

17:                                               ; preds = %12, %4
  %18 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %9, align 8
  %19 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %7, align 8
  %27 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %9, align 8
  %30 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %54

35:                                               ; preds = %25, %17
  %36 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %9, align 8
  %37 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %7, align 8
  %45 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %9, align 8
  %48 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %46, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %54

53:                                               ; preds = %43, %35
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %52, %34, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_value_is_hex.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_value_is_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"_guid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_guids\00", align 1
@__const._zed_event_value_is_hex.hex_suffix = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_zed_event_value_is_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zed_event_value_is_hex(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [3 x i8*], align 16
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i8*]* @__const._zed_event_value_is_hex.hex_suffix to i8*), i64 24, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8** %12, i8*** %5, align 8
  br label %13

13:                                               ; preds = %33, %11
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strstr(i8* %18, i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %24, %17
  br label %33

33:                                               ; preds = %32
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  br label %13

36:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

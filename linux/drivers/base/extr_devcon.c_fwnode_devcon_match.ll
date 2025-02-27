; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devcon.c_fwnode_devcon_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devcon.c_fwnode_devcon_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.device_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fwnode_handle*, i8*, i8*, i8* (%struct.device_connection*, i32, i8*)*)* @fwnode_devcon_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fwnode_devcon_match(%struct.fwnode_handle* %0, i8* %1, i8* %2, i8* (%struct.device_connection*, i32, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8* (%struct.device_connection*, i32, i8*)*, align 8
  %10 = alloca %struct.device_connection, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* (%struct.device_connection*, i32, i8*)* %3, i8* (%struct.device_connection*, i32, i8*)** %9, align 8
  %13 = bitcast %struct.device_connection* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %37, %4
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @fwnode_find_reference(%struct.fwnode_handle* %15, i8* %16, i32 %17)
  %19 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %10, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %40

25:                                               ; preds = %14
  %26 = load i8* (%struct.device_connection*, i32, i8*)*, i8* (%struct.device_connection*, i32, i8*)** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* %26(%struct.device_connection* %10, i32 -1, i8* %27)
  store i8* %28, i8** %11, align 8
  %29 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fwnode_handle_put(i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** %5, align 8
  br label %41

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %14

40:                                               ; preds = %24
  store i8* null, i8** %5, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fwnode_find_reference(%struct.fwnode_handle*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @fwnode_handle_put(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

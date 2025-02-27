; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_client_func.c_copy_tracker_servers.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_client_func.c_copy_tracker_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FDFS_TRACKER_SERVER_DEF_PORT = common dso_local global i32 0, align 4
@storage_cmp_server_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8**)* @copy_tracker_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_tracker_servers(%struct.TYPE_4__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = call i32 @memset(i32* %10, i32 0, i32 4)
  %13 = call i32 @fdfs_server_sock_reset(i32* %10)
  %14 = load i8**, i8*** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %14, i64 %18
  store i8** %19, i8*** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load i8**, i8*** %7, align 8
  store i8** %22, i8*** %8, align 8
  br label %23

23:                                               ; preds = %53, %3
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = icmp ult i8** %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @FDFS_TRACKER_SERVER_DEF_PORT, align 4
  %31 = call i32 @fdfs_parse_server_info(i8* %29, i32 %30, i32* %10)
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @storage_cmp_server_info, align 4
  %43 = call i32* @bsearch(i32* %10, i32 %38, i32 %41, i32 4, i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = call i32 @insert_into_sorted_servers(%struct.TYPE_4__* %46, i32* %10)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %35
  br label %53

53:                                               ; preds = %52
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %8, align 8
  br label %23

56:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fdfs_server_sock_reset(i32*) #1

declare dso_local i32 @fdfs_parse_server_info(i8*, i32, i32*) #1

declare dso_local i32* @bsearch(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @insert_into_sorted_servers(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

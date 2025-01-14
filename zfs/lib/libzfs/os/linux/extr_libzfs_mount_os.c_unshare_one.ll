; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_unshare_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_unshare_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SA_INIT_SHARE_API = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@proto_table = common dso_local global %struct.TYPE_8__* null, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot unshare '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot unshare '%s': not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unshare_one(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @zfs_strdup(%struct.TYPE_7__* %13, i8* %14)
  store i8* %15, i8** %12, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = load i32, i32* @SA_INIT_SHARE_API, align 4
  %18 = call i32 @zfs_init_libshare(%struct.TYPE_7__* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @SA_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @proto_table, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TEXT_DOMAIN, align 4
  %31 = call i32 @dgettext(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @sa_errorstr(i32 %33)
  %35 = call i32 (%struct.TYPE_7__*, i32, i32, i8*, ...) @zfs_error_fmt(%struct.TYPE_7__* %24, i32 %29, i32 %31, i8* %32, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %83

36:                                               ; preds = %4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = call i32* @sa_find_share(i32 %39, i8* %40)
  store i32* %41, i32** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %36
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @proto_table, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sa_disable_share(i32* %47, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SA_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %46
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @proto_table, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TEXT_DOMAIN, align 4
  %65 = call i32 @dgettext(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @sa_errorstr(i32 %67)
  %69 = call i32 (%struct.TYPE_7__*, i32, i32, i8*, ...) @zfs_error_fmt(%struct.TYPE_7__* %58, i32 %63, i32 %65, i8* %66, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %83

70:                                               ; preds = %46
  br label %82

71:                                               ; preds = %36
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @proto_table, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TEXT_DOMAIN, align 4
  %79 = call i32 @dgettext(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (%struct.TYPE_7__*, i32, i32, i8*, ...) @zfs_error_fmt(%struct.TYPE_7__* %72, i32 %77, i32 %79, i8* %80)
  store i32 %81, i32* %5, align 4
  br label %83

82:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %71, %57, %21
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i8* @zfs_strdup(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @zfs_init_libshare(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @zfs_error_fmt(%struct.TYPE_7__*, i32, i32, i8*, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @sa_errorstr(i32) #1

declare dso_local i32* @sa_find_share(i32, i8*) #1

declare dso_local i32 @sa_disable_share(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

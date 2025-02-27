; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_file.c_check_file_clone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_file.c_check_file_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/PG_VERSION\00", align 1
@old_cluster = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s/PG_VERSION.clonetest\00", align 1
@new_cluster = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"file cloning not supported on this platform\0A\00", align 1
@COPYFILE_CLONE_FORCE = common dso_local global i32 0, align 4
@FICLONE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@pg_file_create_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_file_clone() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAXPGPATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i32, i32* @MAXPGPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %11 = trunc i64 %5 to i32
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @old_cluster, i32 0, i32 0), align 8
  %13 = call i32 @snprintf(i8* %7, i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = trunc i64 %9 to i32
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 8
  %16 = call i32 @snprintf(i8* %10, i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = call i32 @unlink(i8* %10)
  %18 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @unlink(i8* %10)
  %20 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %20)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @pg_fatal(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

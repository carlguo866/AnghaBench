; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/os/linux/extr_zpool_vdev_os.c_check_slice.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/os/linux/extr_zpool_vdev_os.c_check_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"zfs_member\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s contains a filesystem of type '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @check_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_slice(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @blkid_get_tag_value(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @check_file(i8* %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %36

31:                                               ; preds = %27
  store i32 -1, i32* %10, align 4
  %32 = call i32 @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @vdev_error(i32 %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %30
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %17
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i8* @blkid_get_tag_value(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @check_file(i8*, i32, i32) #1

declare dso_local i32 @vdev_error(i32, i8*, i8*) #1

declare dso_local i32 @gettext(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

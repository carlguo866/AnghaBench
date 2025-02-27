; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_uuid.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.grub_ntfs_data = type { i64 }

@my_mod = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @grub_ntfs_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_ntfs_uuid(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grub_ntfs_data*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @my_mod, align 4
  %11 = call i32 @grub_dl_ref(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.grub_ntfs_data* @grub_ntfs_mount(i32 %12)
  store %struct.grub_ntfs_data* %13, %struct.grub_ntfs_data** %5, align 8
  %14 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %5, align 8
  %15 = icmp ne %struct.grub_ntfs_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %5, align 8
  %18 = getelementptr inbounds %struct.grub_ntfs_data, %struct.grub_ntfs_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @grub_xasprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i8**, i8*** %4, align 8
  store i8* %20, i8** %21, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i8**, i8*** %4, align 8
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* @my_mod, align 4
  %26 = call i32 @grub_dl_unref(i32 %25)
  %27 = load %struct.grub_ntfs_data*, %struct.grub_ntfs_data** %5, align 8
  %28 = call i32 @grub_free(%struct.grub_ntfs_data* %27)
  %29 = load i32, i32* @grub_errno, align 4
  ret i32 %29
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_ntfs_data* @grub_ntfs_mount(i32) #1

declare dso_local i8* @grub_xasprintf(i8*, i64) #1

declare dso_local i32 @grub_dl_unref(i32) #1

declare dso_local i32 @grub_free(%struct.grub_ntfs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_get_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_syncobj = type { i32 }
%struct.file = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"syncobj_file\00", align 1
@drm_syncobj_file_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_get_fd(%struct.drm_syncobj* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_syncobj*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_syncobj* %0, %struct.drm_syncobj** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @O_CLOEXEC, align 4
  %9 = call i32 @get_unused_fd_flags(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.drm_syncobj*, %struct.drm_syncobj** %4, align 8
  %16 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @drm_syncobj_file_fops, %struct.drm_syncobj* %15, i32 0)
  store %struct.file* %16, %struct.file** %6, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = call i64 @IS_ERR(%struct.file* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @put_unused_fd(i32 %21)
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.file* %23)
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load %struct.drm_syncobj*, %struct.drm_syncobj** %4, align 8
  %27 = call i32 @drm_syncobj_get(%struct.drm_syncobj* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = call i32 @fd_install(i32 %28, %struct.file* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %20, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.drm_syncobj*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @drm_syncobj_get(%struct.drm_syncobj*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

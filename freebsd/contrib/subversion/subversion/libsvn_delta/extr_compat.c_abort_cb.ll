; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_abort_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_abort_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.editor_baton = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @abort_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @abort_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.editor_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.editor_baton*
  store %struct.editor_baton* %9, %struct.editor_baton** %5, align 8
  %10 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @drive_changes(%struct.editor_baton* %10, i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %14 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32* (i32, i32*)*, i32* (i32, i32*)** %16, align 8
  %18 = load %struct.editor_baton*, %struct.editor_baton** %5, align 8
  %19 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* %17(i32 %20, i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @svn_error_clear(i32* %29)
  br label %33

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  store i32* %32, i32** %6, align 8
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @svn_error_trace(i32* %35)
  ret i32* %36
}

declare dso_local i32* @drive_changes(%struct.editor_baton*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

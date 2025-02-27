; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp_lookup(%struct.TYPE_5__* %0, i32 %1, %struct.fileproc** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fileproc**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca %struct.fileproc*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fileproc** %2, %struct.fileproc*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.filedesc*, %struct.filedesc** %13, align 8
  store %struct.filedesc* %14, %struct.filedesc** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i32 @proc_fdlock_spin(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %20
  %24 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %25 = icmp eq %struct.filedesc* %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %29 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %34 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %33, i32 0, i32 2
  %35 = load %struct.fileproc**, %struct.fileproc*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %35, i64 %37
  %39 = load %struct.fileproc*, %struct.fileproc** %38, align 8
  store %struct.fileproc* %39, %struct.fileproc** %11, align 8
  %40 = icmp eq %struct.fileproc* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %32
  %42 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %43 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UF_RESERVED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41, %32, %26, %23, %20
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = call i32 @proc_fdunlock(%struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @EBADF, align 4
  store i32 %59, i32* %5, align 4
  br label %77

60:                                               ; preds = %41
  %61 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %62 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.fileproc**, %struct.fileproc*** %8, align 8
  %66 = icmp ne %struct.fileproc** %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %69 = load %struct.fileproc**, %struct.fileproc*** %8, align 8
  store %struct.fileproc* %68, %struct.fileproc** %69, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = call i32 @proc_fdunlock(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @proc_fdlock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

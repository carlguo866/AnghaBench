; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_groupaccess.c_ga_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_groupaccess.c_ga_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@ngroups = common dso_local global i32 0, align 4
@NGROUPS_MAX = common dso_local global i32 0, align 4
@groups_byname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"getgrouplist: groups list too small\00", align 1
@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ga_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.group*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ngroups, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @ga_free()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* @NGROUPS_MAX, align 4
  store i32 %14, i32* @ngroups, align 4
  %15 = load i32, i32* @ngroups, align 4
  %16 = call i8* @xcalloc(i32 %15, i32 4)
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* @ngroups, align 4
  %19 = call i8* @xcalloc(i32 %18, i32 4)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** @groups_byname, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @getgrouplist(i8* %21, i32 %22, i32* %23, i32* @ngroups)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = call i32 @logit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ngroups, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.group* @getgrgid(i32 %38)
  store %struct.group* %39, %struct.group** %8, align 8
  %40 = icmp ne %struct.group* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.group*, %struct.group** %8, align 8
  %43 = getelementptr inbounds %struct.group, %struct.group* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xstrdup(i32 %44)
  %46 = load i32*, i32** @groups_byname, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* @ngroups, align 4
  ret i32 %58
}

declare dso_local i32 @ga_free(...) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @getgrouplist(i8*, i32, i32*, i32*) #1

declare dso_local i32 @logit(i8*) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

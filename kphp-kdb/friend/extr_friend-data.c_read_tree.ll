; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_read_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_read_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected end of file in read_tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @read_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @read_tree() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = call i8* @readin(i32 1)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %51

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %3, align 1
  %15 = call i32 @readadv(i32 1)
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 1
  br label %23

23:                                               ; preds = %19, %11
  %24 = phi i1 [ true, %11 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8, i8* %3, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %51

30:                                               ; preds = %23
  %31 = call i8* @readin(i32 16)
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %51

37:                                               ; preds = %30
  %38 = call %struct.TYPE_4__* @new_tree_node(i32 0, i32 0)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %4, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @memcpy(i32* %40, i8* %41, i32 16)
  %43 = call i32 @readadv(i32 16)
  %44 = call %struct.TYPE_4__* @read_tree()
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %46, align 8
  %47 = call %struct.TYPE_4__* @read_tree()
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %1, align 8
  br label %51

51:                                               ; preds = %37, %34, %29, %8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %52
}

declare dso_local i8* @readin(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @readadv(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @new_tree_node(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

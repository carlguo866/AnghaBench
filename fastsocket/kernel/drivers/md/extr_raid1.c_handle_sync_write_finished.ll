; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_handle_sync_write_finished.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_handle_sync_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r1bio = type { i32, i32, i32, %struct.bio** }
%struct.bio = type { i32, i32* }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.r1bio*)* @handle_sync_write_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sync_write_finished(%struct.r1conf* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  %9 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %10 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %87, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %15 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %12
  %20 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %21 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.md_rdev*, %struct.md_rdev** %26, align 8
  store %struct.md_rdev* %27, %struct.md_rdev** %7, align 8
  %28 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %29 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %28, i32 0, i32 3
  %30 = load %struct.bio**, %struct.bio*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bio*, %struct.bio** %30, i64 %32
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  store %struct.bio* %34, %struct.bio** %8, align 8
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %87

40:                                               ; preds = %19
  %41 = load i32, i32* @BIO_UPTODATE, align 4
  %42 = load %struct.bio*, %struct.bio** %8, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i32, i32* @R1BIO_MadeGood, align 4
  %48 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %49 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %48, i32 0, i32 2
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %54 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %55 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %53, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %52, %46, %40
  %60 = load i32, i32* @BIO_UPTODATE, align 4
  %61 = load %struct.bio*, %struct.bio** %8, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @R1BIO_WriteError, align 4
  %67 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %68 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %67, i32 0, i32 2
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %73 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %74 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @rdev_set_badblocks(%struct.md_rdev* %72, i32 %75, i32 %76, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %81 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %84 = call i32 @md_error(i32 %82, %struct.md_rdev* %83)
  br label %85

85:                                               ; preds = %79, %71
  br label %86

86:                                               ; preds = %85, %65, %59
  br label %87

87:                                               ; preds = %86, %39
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %12

90:                                               ; preds = %12
  %91 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %92 = call i32 @put_buf(%struct.r1bio* %91)
  %93 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %94 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @md_done_sync(i32 %95, i32 %96, i32 1)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @md_error(i32, %struct.md_rdev*) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

declare dso_local i32 @md_done_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

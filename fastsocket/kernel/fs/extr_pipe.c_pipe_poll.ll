; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i64, i32, i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@PIPE_BUFFERS = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @pipe_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.pipe_inode_info*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %16, align 8
  store %struct.pipe_inode_info* %17, %struct.pipe_inode_info** %7, align 8
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %20 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %19, i32 0, i32 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @poll_wait(%struct.file* %18, i32* %20, i32* %21)
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %24 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FMODE_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @POLLIN, align 4
  %37 = load i32, i32* @POLLRDNORM, align 4
  %38 = or i32 %36, %37
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  store i32 %41, i32* %5, align 4
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %43 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %51 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @POLLHUP, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %46, %40
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FMODE_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PIPE_BUFFERS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @POLLOUT, align 4
  %72 = load i32, i32* @POLLWRNORM, align 4
  %73 = or i32 %71, %72
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %80 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @POLLERR, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %75
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

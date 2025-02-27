; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dns_resolve.c_nfs_dns_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dns_resolve.c_nfs_dns_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.nfs_dns_ent = type { i64, i8*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sockaddr = type { i32 }

@NFS_DNS_HOSTNAME_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @nfs_dns_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_dns_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs_dns_ent, align 8
  %10 = alloca %struct.nfs_dns_ent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @NFS_DNS_HOSTNAME_MAXLEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %100

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 0, i8* %35, align 1
  %36 = trunc i64 %16 to i32
  %37 = call i64 @qword_get(i8** %5, i8* %18, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %100

41:                                               ; preds = %30
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 4
  %44 = bitcast i32* %43 to %struct.sockaddr*
  %45 = call i64 @rpc_pton(i8* %18, i64 %42, %struct.sockaddr* %44, i32 4)
  %46 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = trunc i64 %16 to i32
  %48 = call i64 @qword_get(i8** %5, i8* %18, i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %100

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 1
  store i8* %18, i8** %53, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 3
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  %57 = call i32 @memset(%struct.TYPE_3__* %56, i32 0, i32 16)
  %58 = call i64 @get_uint(i8** %5, i32* %11)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %100

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %100

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = call i64 (...) @seconds_since_boot()
  %69 = add nsw i64 %67, %68
  %70 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %75 = call %struct.nfs_dns_ent* @nfs_dns_lookup(%struct.cache_detail* %74, %struct.nfs_dns_ent* %9)
  store %struct.nfs_dns_ent* %75, %struct.nfs_dns_ent** %10, align 8
  %76 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %77 = icmp eq %struct.nfs_dns_ent* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %100

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* @CACHE_NEGATIVE, align 4
  %85 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %83, %79
  %89 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %90 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %91 = call %struct.nfs_dns_ent* @nfs_dns_update(%struct.cache_detail* %89, %struct.nfs_dns_ent* %9, %struct.nfs_dns_ent* %90)
  store %struct.nfs_dns_ent* %91, %struct.nfs_dns_ent** %10, align 8
  %92 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %93 = icmp eq %struct.nfs_dns_ent* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %100

95:                                               ; preds = %88
  store i32 0, i32* %13, align 4
  %96 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %97 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %96, i32 0, i32 2
  %98 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %99 = call i32 @cache_put(%struct.TYPE_3__* %97, %struct.cache_detail* %98)
  br label %100

100:                                              ; preds = %95, %94, %78, %64, %60, %51, %40, %29
  %101 = load i32, i32* %13, align 4
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @qword_get(i8**, i8*, i32) #2

declare dso_local i64 @rpc_pton(i8*, i64, %struct.sockaddr*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i64 @get_uint(i8**, i32*) #2

declare dso_local i64 @seconds_since_boot(...) #2

declare dso_local %struct.nfs_dns_ent* @nfs_dns_lookup(%struct.cache_detail*, %struct.nfs_dns_ent*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local %struct.nfs_dns_ent* @nfs_dns_update(%struct.cache_detail*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent*) #2

declare dso_local i32 @cache_put(%struct.TYPE_3__*, %struct.cache_detail*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

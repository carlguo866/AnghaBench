; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_name_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_name_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_hashent = type { i32 }
%struct.idmap_hashtable = type { %struct.idmap_hashent* }

@IDMAP_HASH_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idmap_hashent* (%struct.idmap_hashtable*, i8*, i64)* @idmap_name_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idmap_hashent* @idmap_name_hash(%struct.idmap_hashtable* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.idmap_hashent*, align 8
  %5 = alloca %struct.idmap_hashtable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.idmap_hashtable* %0, %struct.idmap_hashtable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %5, align 8
  %9 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %8, i32 0, i32 0
  %10 = load %struct.idmap_hashent*, %struct.idmap_hashent** %9, align 8
  %11 = icmp eq %struct.idmap_hashent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.idmap_hashent* null, %struct.idmap_hashent** %4, align 8
  br label %23

13:                                               ; preds = %3
  %14 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %5, align 8
  %15 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %14, i32 0, i32 0
  %16 = load %struct.idmap_hashent*, %struct.idmap_hashent** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @fnvhash32(i8* %17, i64 %18)
  %20 = load i64, i64* @IDMAP_HASH_SZ, align 8
  %21 = urem i64 %19, %20
  %22 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %16, i64 %21
  store %struct.idmap_hashent* %22, %struct.idmap_hashent** %4, align 8
  br label %23

23:                                               ; preds = %13, %12
  %24 = load %struct.idmap_hashent*, %struct.idmap_hashent** %4, align 8
  ret %struct.idmap_hashent* %24
}

declare dso_local i64 @fnvhash32(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

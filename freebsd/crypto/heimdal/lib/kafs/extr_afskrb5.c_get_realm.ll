; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_get_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_get_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { %struct.krb5_kafs_data* }
%struct.krb5_kafs_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kafs_data*, i8*)* @get_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_realm(%struct.kafs_data* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kafs_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.krb5_kafs_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.kafs_data* %0, %struct.kafs_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.kafs_data*, %struct.kafs_data** %4, align 8
  %10 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %9, i32 0, i32 0
  %11 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %10, align 8
  store %struct.krb5_kafs_data* %11, %struct.krb5_kafs_data** %6, align 8
  %12 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %6, align 8
  %13 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @krb5_get_host_realm(i32 %14, i8* %15, i32** %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %30

19:                                               ; preds = %2
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @strdup(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %6, align 8
  %25 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @krb5_free_host_realm(i32 %26, i32* %27)
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i64 @krb5_get_host_realm(i32, i8*, i32**) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @krb5_free_host_realm(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_addbufs_fb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_addbufs_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__*, i32, i64, %struct.drm_device_dma* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device_dma = type { i32, i32, i32, i64, i32, %struct.drm_buf**, %struct.drm_buf_entry* }
%struct.drm_buf = type { i32, i32, i32, i64, i32, i8*, i8*, i32*, i64, i64, i32*, i64, i64 }
%struct.drm_buf_entry = type { i32, i32, i32, i64, %struct.drm_buf* }
%struct.drm_buf_desc = type { i32, i32, i32, i64 }

@DRIVER_FB_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_CURPROC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@_DRM_PAGE_ALIGN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"count:      %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"order:      %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"size:       %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"agp_offset: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"alignment:  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"page_order: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"total:      %d\0A\00", align 1
@DRM_MIN_ORDER = common dso_local global i32 0, align 4
@DRM_MAX_ORDER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MEM_BUFS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"buffer %d @ %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"byte_count: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dma->buf_count : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"entry->buf_count : %d\0A\00", align 1
@_DRM_DMA_USE_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_buf_desc*)* @drm_addbufs_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_addbufs_fb(%struct.drm_device* %0, %struct.drm_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_buf_desc*, align 8
  %6 = alloca %struct.drm_device_dma*, align 8
  %7 = alloca %struct.drm_buf_entry*, align 8
  %8 = alloca %struct.drm_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_buf**, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_buf_desc* %1, %struct.drm_buf_desc** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 4
  %22 = load %struct.drm_device_dma*, %struct.drm_device_dma** %21, align 8
  store %struct.drm_device_dma* %22, %struct.drm_device_dma** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i32, i32* @DRIVER_FB_DMA, align 4
  %25 = call i32 @drm_core_check_feature(%struct.drm_device* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %425

30:                                               ; preds = %2
  %31 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %32 = icmp ne %struct.drm_device_dma* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %425

36:                                               ; preds = %30
  %37 = load i32, i32* @DRM_CURPROC, align 4
  %38 = call i32 @DRM_SUSER(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %425

43:                                               ; preds = %36
  %44 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %45 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %48 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @drm_order(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %54 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @_DRM_PAGE_ALIGN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @PAGE_ALIGN(i32 %60)
  br label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = sub nsw i32 %71, %72
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %15, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %80 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %81 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DRM_MIN_ORDER, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @DRM_MAX_ORDER, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %75
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %425

108:                                              ; preds = %101
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 2
  %111 = call i32 @mtx_lock(i32* %110)
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %118 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %117, i32 0, i32 2
  %119 = call i32 @mtx_unlock(i32* %118)
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %425

122:                                              ; preds = %108
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 2
  %128 = call i32 @mtx_unlock(i32* %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = call i32 @DRM_LOCK(%struct.drm_device* %129)
  %131 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %132 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %131, i32 0, i32 6
  %133 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %133, i64 %135
  store %struct.drm_buf_entry* %136, %struct.drm_buf_entry** %7, align 8
  %137 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %138 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %122
  %142 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %143 = call i32 @DRM_UNLOCK(%struct.drm_device* %142)
  %144 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %145 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %144, i32 0, i32 0
  %146 = call i32 @atomic_dec(i32* %145)
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %425

149:                                              ; preds = %122
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = icmp sgt i32 %153, 4096
  br i1 %154, label %155, label %163

155:                                              ; preds = %152, %149
  %156 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %157 = call i32 @DRM_UNLOCK(%struct.drm_device* %156)
  %158 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %159 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %158, i32 0, i32 0
  %160 = call i32 @atomic_dec(i32* %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %425

163:                                              ; preds = %152
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 96
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* @DRM_MEM_BUFS, align 4
  %169 = load i32, i32* @M_NOWAIT, align 4
  %170 = load i32, i32* @M_ZERO, align 4
  %171 = or i32 %169, %170
  %172 = call i8* @malloc(i32 %167, i32 %168, i32 %171)
  %173 = bitcast i8* %172 to %struct.drm_buf*
  %174 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %175 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %174, i32 0, i32 4
  store %struct.drm_buf* %173, %struct.drm_buf** %175, align 8
  %176 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %177 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %176, i32 0, i32 4
  %178 = load %struct.drm_buf*, %struct.drm_buf** %177, align 8
  %179 = icmp ne %struct.drm_buf* %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %163
  %181 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %182 = call i32 @DRM_UNLOCK(%struct.drm_device* %181)
  %183 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %184 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %183, i32 0, i32 0
  %185 = call i32 @atomic_dec(i32* %184)
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %425

188:                                              ; preds = %163
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %191 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %194 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  store i64 0, i64* %9, align 8
  br label %195

195:                                              ; preds = %288, %188
  %196 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %197 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %309

201:                                              ; preds = %195
  %202 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %203 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %202, i32 0, i32 4
  %204 = load %struct.drm_buf*, %struct.drm_buf** %203, align 8
  %205 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %206 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %204, i64 %208
  store %struct.drm_buf* %209, %struct.drm_buf** %8, align 8
  %210 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %211 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %214 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %212, %215
  %217 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %218 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %221 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %224 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %226 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %225, i32 0, i32 12
  store i64 0, i64* %226, align 8
  %227 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %228 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %9, align 8
  %231 = add i64 %229, %230
  %232 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %233 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %232, i32 0, i32 11
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* %10, align 8
  %235 = load i64, i64* %9, align 8
  %236 = add i64 %234, %235
  %237 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %238 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %9, align 8
  %241 = add i64 %239, %240
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %244 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %243, i32 0, i32 5
  store i8* %242, i8** %244, align 8
  %245 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %246 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %245, i32 0, i32 10
  store i32* null, i32** %246, align 8
  %247 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %248 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %247, i32 0, i32 9
  store i64 0, i64* %248, align 8
  %249 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %250 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %249, i32 0, i32 8
  store i64 0, i64* %250, align 8
  %251 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %252 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %251, i32 0, i32 7
  store i32* null, i32** %252, align 8
  %253 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %254 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %253, i32 0, i32 1
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %259 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %261 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @DRM_MEM_BUFS, align 4
  %264 = load i32, i32* @M_NOWAIT, align 4
  %265 = load i32, i32* @M_ZERO, align 4
  %266 = or i32 %264, %265
  %267 = call i8* @malloc(i32 %262, i32 %263, i32 %266)
  %268 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %269 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %268, i32 0, i32 6
  store i8* %267, i8** %269, align 8
  %270 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %271 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %270, i32 0, i32 6
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %288, label %274

274:                                              ; preds = %201
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %277 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %279 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %280 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %278, %struct.drm_buf_entry* %279)
  %281 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %282 = call i32 @DRM_UNLOCK(%struct.drm_device* %281)
  %283 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %284 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %283, i32 0, i32 0
  %285 = call i32 @atomic_dec(i32* %284)
  %286 = load i32, i32* @ENOMEM, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %3, align 4
  br label %425

288:                                              ; preds = %201
  %289 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %290 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %293 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %292, i32 0, i32 5
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %291, i8* %294)
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %9, align 8
  %299 = add i64 %298, %297
  store i64 %299, i64* %9, align 8
  %300 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %301 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 8
  %304 = load i32, i32* @PAGE_SIZE, align 4
  %305 = load i32, i32* %15, align 4
  %306 = shl i32 %304, %305
  %307 = load i32, i32* %17, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %17, align 4
  br label %195

309:                                              ; preds = %195
  %310 = load i32, i32* %17, align 4
  %311 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %310)
  %312 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %313 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %312, i32 0, i32 5
  %314 = load %struct.drm_buf**, %struct.drm_buf*** %313, align 8
  %315 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %316 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %319 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %317, %320
  %322 = sext i32 %321 to i64
  %323 = mul i64 %322, 8
  %324 = trunc i64 %323 to i32
  %325 = load i32, i32* @DRM_MEM_BUFS, align 4
  %326 = load i32, i32* @M_NOWAIT, align 4
  %327 = call %struct.drm_buf** @realloc(%struct.drm_buf** %314, i32 %324, i32 %325, i32 %326)
  store %struct.drm_buf** %327, %struct.drm_buf*** %19, align 8
  %328 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %329 = icmp ne %struct.drm_buf** %328, null
  br i1 %329, label %341, label %330

330:                                              ; preds = %309
  %331 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %332 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %333 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %331, %struct.drm_buf_entry* %332)
  %334 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %335 = call i32 @DRM_UNLOCK(%struct.drm_device* %334)
  %336 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %337 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %336, i32 0, i32 0
  %338 = call i32 @atomic_dec(i32* %337)
  %339 = load i32, i32* @ENOMEM, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %425

341:                                              ; preds = %309
  %342 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %343 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %344 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %343, i32 0, i32 5
  store %struct.drm_buf** %342, %struct.drm_buf*** %344, align 8
  store i32 0, i32* %18, align 4
  br label %345

345:                                              ; preds = %368, %341
  %346 = load i32, i32* %18, align 4
  %347 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %348 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp slt i32 %346, %349
  br i1 %350, label %351, label %371

351:                                              ; preds = %345
  %352 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %353 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %352, i32 0, i32 4
  %354 = load %struct.drm_buf*, %struct.drm_buf** %353, align 8
  %355 = load i32, i32* %18, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %354, i64 %356
  %358 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %359 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %358, i32 0, i32 5
  %360 = load %struct.drm_buf**, %struct.drm_buf*** %359, align 8
  %361 = load i32, i32* %18, align 4
  %362 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %363 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %361, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %360, i64 %366
  store %struct.drm_buf* %357, %struct.drm_buf** %367, align 8
  br label %368

368:                                              ; preds = %351
  %369 = load i32, i32* %18, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %18, align 4
  br label %345

371:                                              ; preds = %345
  %372 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %373 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %376 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = add nsw i32 %377, %374
  store i32 %378, i32* %376, align 8
  %379 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %380 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %383 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %385, %381
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %383, align 8
  %388 = load i32, i32* %17, align 4
  %389 = load i32, i32* @PAGE_SHIFT, align 4
  %390 = ashr i32 %388, %389
  %391 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %392 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %393, %390
  store i32 %394, i32* %392, align 4
  %395 = load i32, i32* %17, align 4
  %396 = sext i32 %395 to i64
  %397 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %398 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %397, i32 0, i32 3
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %399, %396
  store i64 %400, i64* %398, align 8
  %401 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %402 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %403)
  %405 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %406 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %407)
  %409 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %410 = call i32 @DRM_UNLOCK(%struct.drm_device* %409)
  %411 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %412 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %415 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load i32, i32* %13, align 4
  %417 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %418 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 4
  %419 = load i32, i32* @_DRM_DMA_USE_FB, align 4
  %420 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %421 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  %422 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %423 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %422, i32 0, i32 0
  %424 = call i32 @atomic_dec(i32* %423)
  store i32 0, i32* %3, align 4
  br label %425

425:                                              ; preds = %371, %330, %274, %180, %155, %141, %116, %105, %40, %33, %27
  %426 = load i32, i32* %3, align 4
  ret i32 %426
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_SUSER(i32) #1

declare dso_local i32 @drm_order(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @drm_cleanup_buf_error(%struct.drm_device*, %struct.drm_buf_entry*) #1

declare dso_local %struct.drm_buf** @realloc(%struct.drm_buf**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
